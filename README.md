# CurrenClever Model

```bash
pip3 install flask flask-cors
```

```bash
python3 app.py
```

```bash
python3 -m venv venv
source venv/bin/activate
```

```bash
pip3 install flask flask-cors scikit-learn pandas numpy mysql-connector-python statsmodels
```

```bash
pip3 install tensorflow-macos tensorflow-metal
```

```bash
git config --global http.postBuffer 524288000
```

```bash
# Install miniforge
brew install miniforge

# Create new conda environment
conda create -n tf python=3.10

# init
source /opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh
conda init zsh  # Since you're on macOS

# Activate environment
conda activate tf

# Install TensorFlow and other packages
conda install tensorflow
pip3 install scikit-learn pandas numpy statsmodels mysql-connector-python flask flask-cors

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
python3 app.py
```