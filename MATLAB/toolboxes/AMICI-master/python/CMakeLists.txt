if(DEFINED ENV{PYTHON_EXECUTABLE})
    set( PYTHON_EXECUTABLE $ENV{PYTHON_EXECUTABLE} )
endif()
find_package(PythonInterp 3.6 REQUIRED)

add_custom_target(install-python
    COMMENT "Installing AMICI base python package"
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/sdist
    COMMAND ${PYTHON_EXECUTABLE} setup.py install --prefix= --user)


# Create python wheel
# Note that we have to run build_ext explicitely before bdist_wheel, otherwise the swig-generated
# amici.py will not be added to the module build folder, because it does not yet exist at the
# build_py stage
add_custom_target(python-wheel
    COMMENT "Creating wheel for AMICI base python package"
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/sdist
    COMMAND ${PYTHON_EXECUTABLE} setup.py build_ext
    COMMAND ${PYTHON_EXECUTABLE} setup.py bdist_wheel --dist-dir=${CMAKE_CURRENT_BINARY_DIR}
)


add_custom_target(python-sdist
    COMMENT "Creating sdist for AMICI base python package"
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/sdist
    COMMAND ${PYTHON_EXECUTABLE} setup.py sdist --dist-dir=${CMAKE_CURRENT_BINARY_DIR}
)


add_custom_command(
    OUTPUT always_rebuild
    COMMAND cmake -E echo
    )
