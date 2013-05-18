## merge_patch_test

Try out `application/json-merge-patch`.

This site lets you try out the latest draft of [draft-snell-merge](http://tools.ietf.org/html/draft-snell-merge--08).

To try, go to [http://json-merge-patch.herokuapp.com](http://json-merge-patch.herokuapp.com).

Or:

```
$ git clone https://github.com/steveklabnik/merge_patch_test.git
$ cd merge_patch_test
$ bundle
$ bin/rails s
```

Then, open up [http://localhost:3000](http://localhost:3000).

Or, if you want to try from the command-line:

```bash
$ curl -i http://localhost:3000/merges \
  -X GET \
  -H "Accept: application/json-merge-patch" \
  -d merge[original]={%22foo%22%3A%22bar%22}
  -d merge[patch]={%22foo%22%3A%22baz%22}
```

gives:

```text
HTTP/1.1 200 OK
Content-Type: application/json-merge-patch; charset=utf-8
Date: Sat, 18 May 2013 22:19:42 GMT
Content-Length: 13

{"foo":"baz"}
```
