let text = "bonjour bonjour bonjour bonjour"
let packed = Gzip.compress(text.to_bytes())
print(packed.len() < text.len() + 20)
print(Gzip.decompress(packed).unwrap() == text.to_bytes())
print(Gzip.decompress("not gzip".to_bytes()).is_err())
let files = [ArchiveEntry { name: "docs/a.txt", data: "bonjour".to_bytes() }, ArchiveEntry { name: "b.txt", data: "salut".to_bytes() }]
for e in Zip.read(Zip.write(files).unwrap()).unwrap() do
  print("{e.name} {e.data.len()}")
end
for e in Tar.read(Tar.write(files).unwrap()).unwrap() do
  print("{e.name} {e.data.len()}")
end
for e in Tar.read(Tar.write_gz(files).unwrap()).unwrap() do
  print("{e.name} {e.data.len()}")
end
let bad = [ArchiveEntry { name: "../x", data: "x".to_bytes() }]
print(Zip.write(bad).is_err())
print(Tar.write(bad).is_err())
print(Gzip.decompress_max(Gzip.compress(text.to_bytes()), 5).is_err())
