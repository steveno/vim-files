#!/bin/bash

# AUTHOR: Steven Oliver <oliver.steven@gmail.com>

# This code is hereby placed in the public domain.

# THIS SOFTWARE IS PROVIDED BY THE AUTHORS ''AS IS'' AND ANY EXPRESS
# OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
# EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

if [ $HOSTNAME="mohiam" ] 
then
    cd /Applications/Custom/MacVim/MacVim.app/Contents/Resources/vim/runtime/syntax/
    if [ -f ]
    ln -s ../../../../../../../../../Users/stevenoliver/Projects/go/misc/vim/syntax/go.vim  
    ln -s ../../../../../../../../../Users/stevenoliver/Projects/falconpl-vim/syntax/falcon.vim 
    cd ../ftdetect
    ln -s ../../../../../../../../../Users/stevenoliver/Projects/go/misc/vim/ftdetect/gofiletype.vim 
    ln -s ../../../../../../../../../Users/stevenoliver/Projects/falconpl-vim/ftdetect/falcon.vim 
    cd ../ftplugin
    ln -s ../../../../../../../../../Users/stevenoliver/Projects/falconpl-vim/ftplugin/falcon.vim 
    cd ../indent
    ln -s ../../../../../../../../../Users/stevenoliver/Projects/falconpl-vim/indent/falcon.vim 
fi
