

/**
 * Encode using these characters.
 * 
 * The array length must be 16, to map one byte to two chars.
 */
const chars = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P'];

/**
 * Byte to string
 * 
 * Map each byte to a two-character string, by permuting valid characters.
 * The array length must be 256, such as ['AA','AB','AC',..,'PN','PO','PP'].
 * 
 * Example: byteToStringArr[0] => "AA"
 */
const byteToStringArr = [].concat.apply(
  [], 
  chars.map(function(a){
    return chars.map(function(b){ 
      return a + b; 
    })
  })
);

/**
 * Convert a byte to its string.
 *
 * Example: byteToString(0) => "AA"
 */
function byteToString(byte){ 
  return byteToStringArr[byte]; 
}

/**
 * Convert a byte array to its string.
 *
 * Example: byteToString([0, 255]) => "AAPP"
 */
function bytesToString(bytes){ 
  return bytes.map(byteToString).join(""); 
}

/**
 * Get random bytes using the browser's typical crypto package.
 * We isolate the randomness in just this one function, so we
 * can chanage this later as we want, and also to ease auditing.
 */
function randomBytes(length) {
  var a = new Uint8Array(length);
  window.crypto.getRandomValues(a);
  return [].slice.call(a);
}

/**
 * Generate a random string of a given length.
 *
 * Example: generate(4) => "ABCD"
 */
function generate(length) {
  return bytesToString(randomBytes(length/2))
}

/**
 * Separate a string every _length_ characters using a _separator_ string.
 *
 * Example: separate("ABCDEFGHIJKL", 3, "-") => "ABC-DEF-GHI-JKL"
 */
function separate(s, length, separator) {
  return st.match(/.{1,length}/g).join(separator);
}

