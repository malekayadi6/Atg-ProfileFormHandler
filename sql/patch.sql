connect sys as sysdba
atg;


GRANT SELECT ON sys.dba_pending_transactions TO malek;
GRANT SELECT ON sys.pending_trans$ TO malek;  
GRANT SELECT ON sys.dba_2pc_pending TO malek;
GRANT EXECUTE ON sys.dbms_xa TO malek;

