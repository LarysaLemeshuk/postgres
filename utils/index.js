module.exports.mapUsers = (usersArray) => usersArray.map(
      (currentUser) =>`('${currentUser.firstName}', '${currentUser.lastName}', ${currentUser.isSubscribe}, '${currentUser.gender}')`
    ).join(',');
