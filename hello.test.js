// @flow

import hello from './hello';

// Changed!

describe('a test', () => {
  it('should work', () => {
    expect(hello()).toEqual(20);
  });
});
