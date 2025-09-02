output "nodes_files" {
  value       = [for n in local_file.node : n.filename]
  description = "List of files that simulate created nodes"
}
