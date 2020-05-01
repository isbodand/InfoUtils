## BSD 3-Clause License
#
# Copyright (c) 2020, bodand
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its
#    contributors may be used to endorse or promote products derived from
#    this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


## CMake dependency manager capabilities
include(FetchContent)
message(STATUS "Registering dependencies")
message(STATUS "Registering dependencies - done")

## Dependencies
## Test dependencies
if (INFO_UTILS_BUILD_TESTS)
    message(STATUS "Registering test dependencies")

    FetchContent_Declare( # Assertion library for cooler syntax
            snowhouse
            GIT_REPOSITORY https://github.com/banditcpp/snowhouse.git
            GIT_TAG v5.0.0
            )

    FetchContent_Declare( # Pulls in Boost
            Boost-CMake
            GIT_REPOSITORY https://github.com/Orphis/boost-cmake.git
            # USE MASTER
            )

    message(STATUS "Registering test dependencies - done")
endif ()

## Get dependencies
message(STATUS "Getting dependencies")
message(STATUS "Getting dependencies - done")

## Get test dependencies
if (INFO_UTILS_BUILD_TESTS)
    message(STATUS "Getting test dependencies")

    FetchContent_MakeAvailable(snowhouse)
    FetchContent_MakeAvailable(Boost-CMake)

    message(STATUS "Getting test dependencies - done")
endif ()

