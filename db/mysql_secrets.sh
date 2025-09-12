kubectl create secret generic mysql-secrets \
--from-literal=root-password='my-root-pw' \
--from-literal=auth-password='my-app-pw' \
--from-literal=secret-key='xco0sr0fh4e52x03g9mv'