// @flow

import hello from './hello';

describe('a test', () => {
  it('should work', () => {
    expect(hello()).toEqual(20);
  });
});
