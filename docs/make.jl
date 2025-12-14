using Documenter
using AnythingLLMDocs
using QuantumOptics

doc_modules = [QuantumOptics]

api_base="https://anythingllm.krastanov.org/api/v1"
anythingllm_assets = integrate_anythingllm(
    "QuantumOptics",
    doc_modules,
    @__DIR__,
    api_base;
    repo = "github.com/qojulia/QuantumOptics.jl.git",
    options = EmbedOptions(),
)

makedocs(
    sitename = "QuantumOptics.jl",
    clean = true,
    doctest = false,
    warnonly = [:missing_docs],
    modules = doc_modules,
    pages = ["index.md"],
    format = Documenter.HTML(assets = anythingllm_assets),
)

deploydocs(
    repo = "github.com/qojulia/QuantumOptics.jl.git",
)
