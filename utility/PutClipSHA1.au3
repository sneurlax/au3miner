#include <Crypt.au3>

$_File = FileOpenDialog("Select file to hash", @WorkingDir, "All (*.*)")

ClipPut(_Crypt_HashFile($_File, $CALG_SHA1))