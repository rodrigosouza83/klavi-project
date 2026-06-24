-- Taylor can create products but cannot modify them.
-- The produce_consume role (id 3) grants create and delete, not modify.
-- Replacing it with manage (id 4) gives the correct permissions:
-- view products (from analyze role) + modify products (from manage role)

UPDATE user_role_rela
SET role_id = 4      -- manage: allows modify products
WHERE user_id = 2    -- Taylor
AND role_id = 3;     -- removes produce_consume role