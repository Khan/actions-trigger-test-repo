// @flow

const x = 10;
const doThing = (z: string) => z.trim();
const badNews = () => doThing(x);
const y = `${x}hello`;
doThing(y);

const hello = () => 20;
export default hello;
