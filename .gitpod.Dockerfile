FROM gitpod/workspace-full

# install emscripten
RUN git clone "https://github.com/emscripten-core/emsdk.git" $HOME/.emsdk \
    && cd $HOME/.emsdk \
    && ./emsdk install latest \
    && ./emsdk activate latest

# It adds a file to the .bashrc.d folder,
# while holds all the files that .bashrc calls source on
RUN cd $HOME/.bashrc.d \
    && touch emsdk \
    && echo ". ~/.emsdk/emsdk_env.sh" >> emsdk

    