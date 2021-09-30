export const RECEIVE_USER = 'RECEIVE_USER'
import * as UserAPIUtil from '../util/users_api_util'

const receiveUser = user => ({
    type: RECEIVE_USER,
    user
})

export const fetchUser = (userId) => dispatch => (
    UserAPIUtil.fetchUser(userId).then(user=> dispatch(receiveUser(user)))
)