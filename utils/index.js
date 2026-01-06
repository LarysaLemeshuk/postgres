module.exports.mapUsers = (usersArray) =>
  usersArray
    .map(
      ({ name: { first, last }, gender }) =>
        `('${first}', '${last}', ${Boolean(Math.random() > 0.5)}, '${gender}')`
    )
    .join(',');
