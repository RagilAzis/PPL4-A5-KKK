module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'bd2a8c3b3f94000d972c5fbcf0821478'),
  },
});
