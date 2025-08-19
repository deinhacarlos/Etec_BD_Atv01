DELIMITER //

CREATE PROCEDURE proc_inserir_e_listar(
    IN p_nome VARCHAR(100),
    IN p_cpf VARCHAR(15),
    IN p_endereco VARCHAR(100),
    IN p_celular VARCHAR(12),
    IN p_data_nasc DATE
)
BEGIN
    -- Inicia a transação
    START TRANSACTION;
    
    -- Insere o registro na tabela
    INSERT INTO cad_cli (nome, cpf, endereco, celular, data_nasc)
    VALUES (p_nome, p_cpf, p_endereco, p_celular, p_data_nasc);
    
    -- Confirma a transação
    COMMIT;
    
    -- Retorna todos os registros da tabela
    SELECT * FROM cad_cli;
END //

DELIMITER ;


