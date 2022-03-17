module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'c967b1bef9b8a682e6a885989d09560b'),
  },
});
