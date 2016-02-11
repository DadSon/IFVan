package br.edu.ifpb;

public class Pessoa {

	private Integer id;
	
	private String nome;
	
	private String tipodepassagem;
	
	private Float preco;
	
	private String usuario;
	
	private String senha;

	public Pessoa(Integer id, String nome, String tipodepassagem, Float preco, String usuario, String senha) {
		this.id = id;
		this.nome = nome;
		this.setTipodepassagem(tipodepassagem);
		this.setPreco(preco);
		this.setUsuario(usuario);
		this.setSenha(senha);
	}
	
	public Pessoa() {}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTipodepassagem() {
		return tipodepassagem;
	}

	public void setTipodepassagem(String tipodepassagem) {
		this.tipodepassagem = tipodepassagem;
	}

	public Float getPreco() {
		return preco;
	}

	public void setPreco(Float preco) {
		this.preco = preco;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}	
