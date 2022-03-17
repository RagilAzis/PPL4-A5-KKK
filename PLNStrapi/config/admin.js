module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '73bb5713780937a0121bbbc990e5925d'),
  },
});
