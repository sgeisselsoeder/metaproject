import os

path = "/home/sgeisselsoeder/projects"
old_origin_baseurl = "geis.ddnss.de"
new_origin_baseurl = "git-kik.hs-ansbach.de"


def update_one_project(full_path):
	print("Checking ", full_path)
	try:
		os.chdir(full_path)
		# check what the current origin url is and store it in the variable current_origin
		current_origin = os.popen('git remote get-url origin').read()
		print("Current origin: " + current_origin)
		if old_origin_baseurl in current_origin:
			print("Changing origin for " + full_path)
			new_origin = current_origin.replace(old_origin_baseurl, new_origin_baseurl)
			if "gitlab_korrektur" in new_origin:
				new_origin = new_origin.replace("gitlab_korrektur", "gitlab_korrektur2")
			print("New origin: " + new_origin)
			# change the origin url to the new one
			os.system('git remote add old_origin ' + current_origin)
			os.system('git remote set-url origin ' + new_origin)
			create_project = True
			if create_project:
				os.system("git push -u origin main")
		else:
			print("Origin doesn't have to be changed")

	except Exception as e:
		print("Error in " + full_path + ": " + str(e))


def update_entire_folder(path):
	for folder in os.listdir(path):
		full_path = os.path.join(path, folder)
		# print("Checking: ", full_path)
		if os.path.isdir(full_path):
			if "_projects" in folder:
				# print("recursing into folder: ", full_path)
				update_entire_folder(full_path)
			else:
				update_one_project(full_path)


update_entire_folder(path=path)

		
