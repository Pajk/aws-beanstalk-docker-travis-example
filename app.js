const Koa = require('koa')
const app = module.exports = new Koa()
const port = process.env.PORT || 3000

app.use(async function(ctx) {
  ctx.body = 'Hello World'
})


if (!module.parent) app.listen(port, () => console.log(`Listening on ${port}`))
