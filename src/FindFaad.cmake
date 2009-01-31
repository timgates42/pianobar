#  FAAD_INCLUDE_DIRS - where to find curl/curl.h, etc.
#  FAAD_LIBRARIES    - List of libraries when using curl.
#  FAAD_FOUND        - True if curl found.

# Look for the header file.
FIND_PATH(FAAD_INCLUDE_DIR NAMES faad.h)
MARK_AS_ADVANCED(FAAD_INCLUDE_DIR)

# Look for the library.
FIND_LIBRARY(FAAD_LIBRARY NAMES faad)
MARK_AS_ADVANCED(FAAD_LIBRARY)

# Copy the results to the output variables.
IF(FAAD_INCLUDE_DIR AND FAAD_LIBRARY)
  SET(FAAD_FOUND 1)
  SET(FAAD_LIBRARIES ${FAAD_LIBRARY})
  SET(FAAD_INCLUDE_DIRS ${FAAD_INCLUDE_DIR})
ELSE(FAAD_INCLUDE_DIR AND FAAD_LIBRARY)
  SET(FAAD_FOUND 0)
  SET(FAAD_LIBRARIES)
  SET(FAAD_INCLUDE_DIRS)
ENDIF(FAAD_INCLUDE_DIR AND FAAD_LIBRARY)

# Report the results.
IF(NOT FAAD_FOUND)
  SET(FAAD_DIR_MESSAGE
    "FAAD was not found. Make sure FAAD_LIBRARY and FAAD_INCLUDE_DIR are set.")
  IF(NOT FAAD_FIND_QUIETLY)
    MESSAGE(STATUS "${FAAD_DIR_MESSAGE}")
  ELSE(NOT FAAD_FIND_QUIETLY)
    IF(FAAD_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "${FAAD_DIR_MESSAGE}")
    ENDIF(FAAD_FIND_REQUIRED)
  ENDIF(NOT FAAD_FIND_QUIETLY)
ENDIF(NOT FAAD_FOUND)
