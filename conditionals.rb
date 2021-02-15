

## contitionals examples is the user authenticated

#is_auth = true

#if is_auth
#    puts "admin page"
#else
#    puts "login page"
#end


#role = :admin
#role = :superadmin
role = :who?

if role == :admin
    puts "admin page"
elsif role == :superadmin
    puts "superadmin page"
else
    puts "login page"
end