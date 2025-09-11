--- Define um novo alvo (target).
--- @param name string O nome do alvo.
--- @param conf? table Uma tabela de configuração opcional.
function target(name, conf) end

--- Define o tipo de um alvo.
--- @param kind string O tipo do alvo ("binary", "static", "shared", etc.).
function set_kind(kind) end

--- Adiciona arquivos de código-fonte a um alvo.
--- @vararg string Os caminhos para os arquivos de código-fonte.
function add_files(...) end

--- Adiciona diretórios de inclusão (include).
--- @vararg string Os caminhos para os diretórios de inclusão.
function add_includedirs(...) end

--- Adiciona diretórios de bibliotecas.
--- @vararg string Os caminhos para os diretórios de bibliotecas.
function add_linkdirs(...) end

--- Adiciona bibliotecas para linkagem.
--- @vararg string Os nomes das bibliotecas.
function add_links(...) end

--- Adiciona definições de pré-processador.
--- @vararg string As definições a serem adicionadas.
function add_defines(...) end

--- Define a versão do C++.
--- @param version string A versão do C++ (ex: "c++11", "c++17").
function set_languages(version) end

--- Adiciona pacotes remotos necessários.
--- @vararg string Os nomes dos pacotes.
function add_requires(...) end

--- Adiciona pacotes ao alvo.
--- @vararg string Os nomes dos pacotes.
function add_packages(...) end
