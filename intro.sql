CREATE PROCEDURE deactivate_unpaid_account()
LANGUAGE SQL
AS $$
    UPDATE accounts SET account = false WHERE balance = 0;
$$;

CALL deactivate_unpaid_account();


CREATE FUNCTION account_type_count(account_type text) RETURNS INTEGER
LANGUAGE plpgsql
AS $$
    DECLARE account_count int;
    BEGIN
        SELECT count (*) FROM accounts where accounts.account_type = $1;
        RETURN account_count;

    END;
$$;

-- Call function==>
execute function account_type_count;