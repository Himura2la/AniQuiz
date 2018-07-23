import Admin from './containers/Admin'
import Board from './containers/Board'

export default [
  {
    path: '/',
    redirectTo: '/a',
    exact: true
  },
  {
    path: '/a',
    component: Admin
  },
  {
    path: '/b',
    component: Board
  }
]
