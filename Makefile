SHELL := /bin/zsh

MAIN := cv
TEX := $(MAIN).tex
PDF := $(MAIN).pdf
SUPPORT := $(wildcard cv/*.tex)
OPENAI_CODEX_MAIN := cv-openai-codex
OPENAI_CODEX_PDF := $(OPENAI_CODEX_MAIN).pdf
OPENAI_COMPUTE_INFRASTRUCTURE_MAIN := cv-openai-compute-infrastructure
OPENAI_COMPUTE_INFRASTRUCTURE_PDF := $(OPENAI_COMPUTE_INFRASTRUCTURE_MAIN).pdf
OPENAI_STARTUPS_DEPLOYMENT_MAIN := cv-openai-startups-deployment
OPENAI_STARTUPS_DEPLOYMENT_PDF := $(OPENAI_STARTUPS_DEPLOYMENT_MAIN).pdf
ANTHROPIC_FULLSTACK_MAIN := cv-anthropic-fullstack
ANTHROPIC_FULLSTACK_PDF := $(ANTHROPIC_FULLSTACK_MAIN).pdf
ANTHROPIC_CLUSTER_MAIN := cv-anthropic-cluster
ANTHROPIC_CLUSTER_PDF := $(ANTHROPIC_CLUSTER_MAIN).pdf
ANTHROPIC_CLAUDE_CODE_SYSTEMS_MAIN := cv-anthropic-claude-code-systems
ANTHROPIC_CLAUDE_CODE_SYSTEMS_PDF := $(ANTHROPIC_CLAUDE_CODE_SYSTEMS_MAIN).pdf
XAI_MAIN := cv-xai
XAI_PDF := $(XAI_MAIN).pdf
XAI_SANDBOX_MAIN := cv-xai-sandbox
XAI_SANDBOX_PDF := $(XAI_SANDBOX_MAIN).pdf
XAI_EXCEPTIONAL_MAIN := cv-xai-exceptional
XAI_EXCEPTIONAL_PDF := $(XAI_EXCEPTIONAL_MAIN).pdf
ISOMORPHIC_LABS_MAIN := cv-isomorphic-labs
ISOMORPHIC_LABS_PDF := $(ISOMORPHIC_LABS_MAIN).pdf
ISOMORPHIC_LABS_MLOPS_MAIN := cv-isomorphic-labs-mlops
ISOMORPHIC_LABS_MLOPS_PDF := $(ISOMORPHIC_LABS_MLOPS_MAIN).pdf
POOLSIDE_AGENT_HARNESS_MAIN := cv-poolside-agent-harness
POOLSIDE_AGENT_HARNESS_PDF := $(POOLSIDE_AGENT_HARNESS_MAIN).pdf
NVIDIA_LPX_MAIN := cv-nvidia-lpx
NVIDIA_LPX_PDF := $(NVIDIA_LPX_MAIN).pdf
LATENT_LABS_MAIN := cv-latent-labs
LATENT_LABS_PDF := $(LATENT_LABS_MAIN).pdf
STACKBLITZ_BOLT_MAIN := cv-stackblitz-bolt
STACKBLITZ_BOLT_PDF := $(STACKBLITZ_BOLT_MAIN).pdf
RECURSIVE_MAIN := cv-recursive
RECURSIVE_PDF := $(RECURSIVE_MAIN).pdf

TECTONIC := tectonic
TECTONICFLAGS := -X compile --keep-logs --keep-intermediates -r 2

.PHONY: all build build-openai-codex build-openai-compute-infrastructure build-openai-startups-deployment build-anthropic-fullstack build-anthropic-cluster build-anthropic-claude-code-systems build-xai build-xai-sandbox build-xai-exceptional build-isomorphic-labs build-isomorphic-labs-mlops build-poolside-agent-harness build-nvidia-lpx build-latent-labs build-stackblitz-bolt build-recursive deps open clean distclean check-tools

all: $(PDF)

build: $(PDF)

build-openai-codex: $(OPENAI_CODEX_PDF)

build-openai-compute-infrastructure: $(OPENAI_COMPUTE_INFRASTRUCTURE_PDF)

build-openai-startups-deployment: $(OPENAI_STARTUPS_DEPLOYMENT_PDF)

build-anthropic-fullstack: $(ANTHROPIC_FULLSTACK_PDF)

build-anthropic-cluster: $(ANTHROPIC_CLUSTER_PDF)

build-anthropic-claude-code-systems: $(ANTHROPIC_CLAUDE_CODE_SYSTEMS_PDF)

build-xai: $(XAI_PDF)

build-xai-sandbox: $(XAI_SANDBOX_PDF)

build-xai-exceptional: $(XAI_EXCEPTIONAL_PDF)

build-isomorphic-labs: $(ISOMORPHIC_LABS_PDF)

build-isomorphic-labs-mlops: $(ISOMORPHIC_LABS_MLOPS_PDF)

build-poolside-agent-harness: $(POOLSIDE_AGENT_HARNESS_PDF)

build-nvidia-lpx: $(NVIDIA_LPX_PDF)

build-latent-labs: $(LATENT_LABS_PDF)

build-stackblitz-bolt: $(STACKBLITZ_BOLT_PDF)

build-recursive: $(RECURSIVE_PDF)

deps:
	brew bundle --file=Brewfile

check-tools:
	@command -v $(TECTONIC) >/dev/null || { echo "Missing $(TECTONIC). Run 'make deps'."; exit 1; }

$(PDF): $(TEX) $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(TEX)

$(OPENAI_CODEX_PDF): $(OPENAI_CODEX_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(OPENAI_CODEX_MAIN).tex

$(OPENAI_COMPUTE_INFRASTRUCTURE_PDF): $(OPENAI_COMPUTE_INFRASTRUCTURE_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(OPENAI_COMPUTE_INFRASTRUCTURE_MAIN).tex

$(OPENAI_STARTUPS_DEPLOYMENT_PDF): $(OPENAI_STARTUPS_DEPLOYMENT_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(OPENAI_STARTUPS_DEPLOYMENT_MAIN).tex

$(ANTHROPIC_FULLSTACK_PDF): $(ANTHROPIC_FULLSTACK_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(ANTHROPIC_FULLSTACK_MAIN).tex

$(ANTHROPIC_CLUSTER_PDF): $(ANTHROPIC_CLUSTER_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(ANTHROPIC_CLUSTER_MAIN).tex

$(ANTHROPIC_CLAUDE_CODE_SYSTEMS_PDF): $(ANTHROPIC_CLAUDE_CODE_SYSTEMS_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(ANTHROPIC_CLAUDE_CODE_SYSTEMS_MAIN).tex

$(XAI_PDF): $(XAI_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(XAI_MAIN).tex

$(XAI_SANDBOX_PDF): $(XAI_SANDBOX_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(XAI_SANDBOX_MAIN).tex

$(XAI_EXCEPTIONAL_PDF): $(XAI_EXCEPTIONAL_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(XAI_EXCEPTIONAL_MAIN).tex

$(ISOMORPHIC_LABS_PDF): $(ISOMORPHIC_LABS_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(ISOMORPHIC_LABS_MAIN).tex

$(ISOMORPHIC_LABS_MLOPS_PDF): $(ISOMORPHIC_LABS_MLOPS_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(ISOMORPHIC_LABS_MLOPS_MAIN).tex

$(POOLSIDE_AGENT_HARNESS_PDF): $(POOLSIDE_AGENT_HARNESS_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(POOLSIDE_AGENT_HARNESS_MAIN).tex

$(NVIDIA_LPX_PDF): $(NVIDIA_LPX_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(NVIDIA_LPX_MAIN).tex

$(LATENT_LABS_PDF): $(LATENT_LABS_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(LATENT_LABS_MAIN).tex

$(STACKBLITZ_BOLT_PDF): $(STACKBLITZ_BOLT_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(STACKBLITZ_BOLT_MAIN).tex

$(RECURSIVE_PDF): $(RECURSIVE_MAIN).tex $(SUPPORT)
	@$(MAKE) check-tools
	$(TECTONIC) $(TECTONICFLAGS) $(RECURSIVE_MAIN).tex

open: $(PDF)
	open $(PDF)

clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).xdv

distclean: clean
	rm -f $(PDF)
