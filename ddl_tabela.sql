CREATE TABLE public.tabela (
  id BIGINT NOT NULL,
  nomeurna TEXT,
  numero INTEGER,
  idcandidatosuperior BIGINT,
  nomecompleto TEXT,
  descricaosexo TEXT,
  datadenascimento TEXT,
  tituloeleitor TEXT,
  cpf TEXT,
  descricaoestadocivil TEXT,
  descricaocorraca TEXT,
  descricaosituacao TEXT,
  nacionalidade TEXT,
  grauinstrucao TEXT,
  ocupacao TEXT,
  gastocampanha1t NUMERIC(18,2),
  gastocampanha2t NUMERIC(18,2),
  sgufnascimento TEXT,
  nomemunicipionascimento TEXT,
  localcandidatura TEXT,
  ufcandidatura TEXT,
  ufsuperiorcandidatura TEXT,
  dataultimaatualizacao TEXT,
  fotourl TEXT,
  fotodataultimaatualizacao TEXT,
  descricaototalizacao TEXT,
  nomecoligacao TEXT,
  composicaocoligacao TEXT,
  numeroprocessodrap TEXT,
  numeroprocessodrapencrypt TEXT,
  numeroprocesso TEXT,
  numeroprocessoencrypt TEXT,
  numeroprocessoprestcontas TEXT,
  numeroprocessoprestcontasencrypt TEXT,
  numeroprotocolo TEXT,
  totaldebens NUMERIC(18,2),
  substituto TEXT,
  motivos TEXT,
  codigosituacaocandidato TEXT,
  descricaosituacaocandidato TEXT,
  st_substituido BOOLEAN,
  descricaonaturalidade TEXT,
  st_motivo_ausencia_requisito BOOLEAN,
  st_motivo_conduta_vedada BOOLEAN,
  cnpjcampanha TEXT,
  gastocampanha NUMERIC(18,2),
  st_motivo_abuso_poder BOOLEAN,
  st_motivo_compra_voto BOOLEAN,
  ds_motivo_outros TEXT,
  st_motivo_gasto_ilicito BOOLEAN,
  st_motivo_ind_partido BOOLEAN,
  st_motivo_ficha_limpa BOOLEAN,
  st_divulga_arquivos BOOLEAN,
  st_divulga_bens BOOLEAN,
  st_divulga BOOLEAN,
  st_reeleicao BOOLEAN,
  cargo TEXT,
  bens JSON,
  vices JSON,
  partido JSON,
  eleicao JSON,
  emails JSON,
  sites JSON,
  arquivos JSON,
  eleicoesanteriores JSON,
  CONSTRAINT tabela_pkey PRIMARY KEY(id)
) ;

ALTER TABLE public.tabela
  OWNER TO postgres;