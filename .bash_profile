source /etc/profile.d/bash_completion.sh
source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k
eval "$(starship init bash)"
export CLAUDE_API_KEY=Sk-kkAI-d6d7ffca01edc73cfb3f6e74f4d18f2f435f4fdb0311cb2499091b8f27052a61kk_tn7z2brx5zzowauu-kk6511bf6e
export GROQ_API_KEY=Sk-kkAI-d6d7ffca01edc73cfb3f6e74f4d18f2f435f4fdb0311cb2499091b8f27052a61kk_tn7z2brx5zzowauu-kk6511bf6e
export ALLOWED_MODELS=x-ai/grok-code-fast-1
export OPENAI_API_BASE=https://kodekey.ai.kodekloud.com/v1
export AZURE_OPENAI_ENDPOINT=https://kodekey.ai.kodekloud.com/openai
export OPENAI_API_KEY=Sk-kkAI-d6d7ffca01edc73cfb3f6e74f4d18f2f435f4fdb0311cb2499091b8f27052a61kk_tn7z2brx5zzowauu-kk6511bf6e
export GROQ_API_BASE=https://kodekey.ai.kodekloud.com
export AZURE_OPENAI_API_KEY=Sk-kkAI-d6d7ffca01edc73cfb3f6e74f4d18f2f435f4fdb0311cb2499091b8f27052a61kk_tn7z2brx5zzowauu-kk6511bf6e
export CLAUDE_API_BASE=https://kodekey.ai.kodekloud.com
export KUBECONFIG=/root/.kube/clusters/k3s_config
export OPENAI_MODEL=x-ai/grok-code-fast-1
export OPENAI_BASE_URL=$OPENAI_API_BASE
