#ifndef AMICI_MODEL_ODE_H
#define AMICI_MODEL_ODE_H

#include "amici/model.h"

#include <nvector/nvector_serial.h>

#include <sundials/sundials_matrix.h>
#include <sunmatrix/sunmatrix_band.h>
#include <sunmatrix/sunmatrix_sparse.h>
#include <sunmatrix/sunmatrix_dense.h>

#include <vector>

namespace amici {
    extern msgIdAndTxtFp warnMsgIdAndTxt;

    class CVodeSolver;

    /**
     * @brief The Model class represents an AMICI ODE model.
     * The model does not contain any data, but represents the state
     * of the model at a specific time t. The states must not always be
     * in sync, but may be updated asynchroneously.
     */
    class Model_ODE : public Model {
    public:
        /** default constructor */
        Model_ODE() : Model() {}

        /** constructor with model dimensions
         * @param nx_rdata number of state variables
         * @param nxtrue_rdata number of state variables of the non-augmented model
         * @param nx_solver number of state variables with conservation laws applied
         * @param nxtrue_solver number of state variables of the non-augmented model
         with conservation laws applied
         * @param ny number of observables
         * @param nytrue number of observables of the non-augmented model
         * @param nz number of event observables
         * @param nztrue number of event observables of the non-augmented model
         * @param ne number of events
         * @param nJ number of objective functions
         * @param nw number of repeating elements
         * @param ndwdx number of nonzero elements in the x derivative of the
         * repeating elements
         * @param ndwdp number of nonzero elements in the p derivative of the
         * repeating elements
         * @param ndxdotdw number of nonzero elements dxdotdw
         * @param ndJydy number of nonzero elements dJydy
         * @param nnz number of nonzero elements in Jacobian
         * @param ubw upper matrix bandwidth in the Jacobian
         * @param lbw lower matrix bandwidth in the Jacobian
         * @param o2mode second order sensitivity mode
         * @param p parameters
         * @param k constants
         * @param plist indexes wrt to which sensitivities are to be computed
         * @param idlist indexes indicating algebraic components (DAE only)
         * @param z2event mapping of event outputs to events
         */
        Model_ODE(const int nx_rdata, const int nxtrue_rdata,
                  const int nx_solver, const int nxtrue_solver, const int ny,
                  const int nytrue, const int nz, const int nztrue,
                  const int ne, const int nJ, const int nw, const int ndwdx,
                  const int ndwdp, const int ndxdotdw, std::vector<int> ndJydy,
                  const int nnz,
                  const int ubw, const int lbw, const SecondOrderMode o2mode,
                  std::vector<realtype> const &p,
                  std::vector<realtype> const &k, std::vector<int> const &plist,
                  std::vector<realtype> const &idlist,
                  std::vector<int> const &z2event)
            : Model(nx_rdata, nxtrue_rdata, nx_solver, nxtrue_solver, ny,
                    nytrue, nz, nztrue, ne, nJ, nw, ndwdx, ndwdp, ndxdotdw,
                    ndJydy, nnz,
                    ubw, lbw, o2mode, p, k, plist, idlist, z2event) {}

        virtual void fJ(realtype t, realtype cj, AmiVector *x, AmiVector *dx,
                        AmiVector *xdot, SUNMatrix J) override;
        void fJ(realtype t, N_Vector x, N_Vector xdot, SUNMatrix J);

        void fJB(realtype t, N_Vector x, N_Vector xB, N_Vector xBdot,
                 SUNMatrix JB);

        virtual void fJSparse(realtype t, realtype cj, AmiVector *x,
                              AmiVector *dx, AmiVector *xdot,
                              SUNMatrix J) override;
        void fJSparse(realtype t, N_Vector x, SUNMatrix J);

        void fJSparseB(realtype t, N_Vector x, N_Vector xB, N_Vector xBdot,
                       SUNMatrix JB);

        void fJDiag(realtype t, N_Vector JDiag, N_Vector x);
        virtual void fJDiag(realtype t, AmiVector *Jdiag, realtype cj,
                            AmiVector *x, AmiVector *dx) override;

        virtual void fJv(realtype t, AmiVector *x, AmiVector *dx,
                         AmiVector *xdot, AmiVector *v, AmiVector *nJv,
                         realtype cj) override;
        void fJv(N_Vector v, N_Vector Jv, realtype t, N_Vector x);

        void fJvB(N_Vector vB, N_Vector JvB, realtype t, N_Vector x,
                  N_Vector xB);

        virtual void froot(realtype t, AmiVector *x, AmiVector *dx, realtype *root) override;

        void froot(realtype t, N_Vector x, realtype *root);

        virtual void fxdot(realtype t, AmiVector *x, AmiVector *dx, AmiVector *xdot) override;
        void fxdot(realtype t, N_Vector x, N_Vector xdot);

        void fxBdot(realtype t, N_Vector x, N_Vector xB, N_Vector xBdot);

        void fqBdot(realtype t, N_Vector x, N_Vector xB, N_Vector qBdot);

        void fdxdotdw(const realtype t, const N_Vector x);

        void fdxdotdp(const realtype t, const N_Vector x);
        virtual void fdxdotdp(realtype t, AmiVector *x, AmiVector *dx) override {
            fdxdotdp(t,x->getNVector());
        }

        void fsxdot(realtype t, AmiVector *x, AmiVector *dx, int ip,
                    AmiVector *sx, AmiVector *sdx, AmiVector *sxdot) override;
        void fsxdot(realtype t, N_Vector x, int ip, N_Vector sx, N_Vector sxdot);

        virtual std::unique_ptr<Solver> getSolver() override;
    protected:

        /** model specific implementation for fJ
         * @param J Matrix to which the Jacobian will be written
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param w vector with helper variables
         * @param dwdx derivative of w wrt x
         **/
        virtual void fJ(realtype *J, const realtype t, const realtype *x, const realtype *p, const realtype *k, const realtype *h,
                        const realtype *w, const realtype *dwdx) = 0;

        /** model specific implementation for fJB
         * @param JB Matrix to which the Jacobian will be written
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param xB Vector with the adjoint states
         * @param w vector with helper variables
         * @param dwdx derivative of w wrt x
         **/
        virtual void fJB(realtype *JB, const realtype t, const realtype *x, const realtype *p, const realtype *k, const realtype *h,
                         const realtype *xB, const realtype *w, const realtype *dwdx){
            throw AmiException("Requested functionality is not supported as %s is not implemented for this model!",__func__);
        }

        /** model specific implementation for fJSparse
         * @param JSparse Matrix to which the Jacobian will be written
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param w vector with helper variables
         * @param dwdx derivative of w wrt x
         **/
        virtual void fJSparse(SUNMatrixContent_Sparse JSparse, const realtype t,
                              const realtype *x, const realtype *p,
                              const realtype *k, const realtype *h,
                              const realtype *w, const realtype *dwdx) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation for fJSparse, data only
         * @param JSparse Matrix to which the Jacobian will be written
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param w vector with helper variables
         * @param dwdx derivative of w wrt x
         **/
        virtual void fJSparse(realtype *JSparse, const realtype t,
                              const realtype *x, const realtype *p,
                              const realtype *k, const realtype *h,
                              const realtype *w, const realtype *dwdx) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation for fJSparse, column pointers
         * @param indexptrs column pointers
         **/
        virtual void fJSparse_colptrs(sunindextype *indexptrs) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation for fJSparse, row values
         * @param indexvals row values
         **/
        virtual void fJSparse_rowvals(sunindextype *indexvals) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation for fJSparseB
         * @param JSparseB Matrix to which the Jacobian will be written
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param xB Vector with the adjoint states
         * @param w vector with helper variables
         * @param dwdx derivative of w wrt x
         **/
        virtual void fJSparseB(SUNMatrixContent_Sparse JSparseB,
                               const realtype t, const realtype *x,
                               const realtype *p, const realtype *k,
                               const realtype *h, const realtype *xB,
                               const realtype *w, const realtype *dwdx) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation for fJSparseB
         * @param JSparseB data array
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param xB Vector with the adjoint states
         * @param w vector with helper variables
         * @param dwdx derivative of w wrt x
         **/
        virtual void fJSparseB(realtype *JSparseB,
                               const realtype t, const realtype *x,
                               const realtype *p, const realtype *k,
                               const realtype *h, const realtype *xB,
                               const realtype *w, const realtype *dwdx) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation for fJSparse, column pointers
         * @param indexptrs column pointers
         **/
        virtual void fJSparseB_colptrs(sunindextype *indexptrs) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation for fJSparse, row values
         * @param indexvals row values
         **/
        virtual void fJSparseB_rowvals(sunindextype *indexvals) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation for fJDiag
         * @param JDiag Matrix to which the Jacobian will be written
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param w vector with helper variables
         * @param dwdx derivative of w wrt x
         **/
        virtual void fJDiag(realtype *JDiag, const realtype t, const realtype *x, const realtype *p, const realtype *k, const realtype *h,
                            const realtype *w, const realtype *dwdx){
            throw AmiException("Requested functionality is not supported as %s is not implemented for this model!",__func__);
        }

        /** model specific implementation for froot
         * @param root values of the trigger function
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         **/
        virtual void froot(realtype *root, const realtype t, const realtype *x, const realtype *p, const realtype *k, const realtype *h){
            throw AmiException("Requested functionality is not supported as %s is not implemented for this model!",__func__); // not implemented
        }

        /** model specific implementation for fxdot
         * @param xdot residual function
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param w vector with helper variables
         **/
        virtual void fxdot(realtype *xdot, const realtype t, const realtype *x, const realtype *p, const             realtype *k, const realtype *h, const realtype *w) = 0;

        /** model specific implementation of fdxdotdp, with w chainrule
         * @param dxdotdp partial derivative xdot wrt p
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param ip parameter index
         * @param w vector with helper variables
         * @param dwdp derivative of w wrt p
         */
        virtual void fdxdotdp(realtype *dxdotdp, const realtype t,
                              const realtype *x, const realtype *p,
                              const realtype *k, const realtype *h,
                              const int ip, const realtype *w,
                              const realtype *dwdp) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation of fdxdotdp, without w chainrule
         * @param dxdotdp partial derivative xdot wrt p
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param ip parameter index
         * @param w vector with helper variables
         */
        virtual void fdxdotdp(realtype *dxdotdp, const realtype t,
                              const realtype *x, const realtype *p,
                              const realtype *k, const realtype *h,
                              const int ip, const realtype *w) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation of fdxdotdw, data part
         * @param dxdotdw partial derivative xdot wrt w
         * @param t timepoint
         * @param x Vector with the states
         * @param p parameter vector
         * @param k constants vector
         * @param h heavyside vector
         * @param w vector with helper variables
         */
        virtual void fdxdotdw(realtype *dxdotdw, const realtype t,
                              const realtype *x, const realtype *p,
                              const realtype *k, const realtype *h,
                              const realtype *w) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation of fdxdotdw, colptrs part
         * @param indexptrs column pointers
         */
        virtual void fdxdotdw_colptrs(sunindextype *indexptrs) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }

        /** model specific implementation of fdxdotdw, colptrs part
         * @param indexvals row values
         */
        virtual void fdxdotdw_rowvals(sunindextype *indexvals) {
            throw AmiException("Requested functionality is not supported as %s "
                               "is not implemented for this model!",
                               __func__); // not implemented
        }
    };

} // namespace amici

#endif // MODEL_H
