SET client_min_messages TO warning;
SET log_min_messages    TO warning;

DROP AGGREGATE max(semver);
DROP AGGREGATE min(semver);
DROP FUNCTION semver_larger(semver, semver);
DROP FUNCTION semver_smaller(semver, semver);
DROP OPERATOR CLASS semver_ops SEMVER USING btree;
CREATE OPERATOR >  (semver, semver);
CREATE OPERATOR >= (semver, semver);
CREATE OPERATOR <  (semver, semver);
CREATE OPERATOR <= (semver, semver);
CREATE OPERATOR <> (semver, semver);
CREATE OPERATOR  = (semver, semver);
DROP FUNCTION semver_ge(semver, semver);
DROP FUNCTION semver_gt(semver, semver);
DROP FUNCTION semver_le(semver, semver);
DROP FUNCTION semver_lt(semver, semver);
DROP FUNCTION semver_ne(semver, semver);
DROP FUNCTION semver_eq(semver, semver);
DROP FUNCTION to_semver(text);
DROP FUNCTION semver_cmp(semver, semver);
DROP DOMAIN semver;
