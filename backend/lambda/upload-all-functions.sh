#! /usr/bin/env bash

update()  {
  echo "Updating create-todo function"
  cd create-todo
  ./upload.sh -u

  echo
  echo
  echo "Updating delete-todo function"
  cd ../delete-todo
  ./upload.sh -u

  echo
  echo
  echo "Updating get-todo function"
  cd ../get-todo
  ./upload.sh -u

  echo
  echo
  echo "Updating list-todos function"
  cd ../list-todos
  ./upload.sh -u

  echo
  echo
  echo "Updating update-todo function"
  cd ../update-todo
  ./upload.sh -u
}


upload()  {
  echo "Uploading create-todo function"
  cd create-todo
  ./upload.sh

  echo
  echo
  echo "Uploading delete-todo function"
  cd ../delete-todo
  ./upload.sh

  echo
  echo
  echo "Uploading get-todo function"
  cd ../get-todo
  ./upload.sh

  echo
  echo
  echo "Uploading list-todos function"
  cd ../list-todos
  ./upload.sh

  echo
  echo
  echo "Uploading update-todo function"
  cd ../update-todo
  ./upload.sh
}


while getopts ":u" opt; do
  case ${opt} in
    u ) # process option u
			UPDATE=true
      ;;
    \? ) echo "Usage: upload-all-functions [-u]"
      ;;
  esac
done

if [[ $UPDATE = "true" ]]
then
	printf "Updating..."
	update
else
	printf "Uploading..."
	upload
fi



