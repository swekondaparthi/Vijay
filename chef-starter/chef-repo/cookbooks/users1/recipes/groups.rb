search("groups", "*:*").each do |groups_data|
    group groups_data ["id"] do
        gid groups_data["gid"]
        members groups_data["members"]
    end
end
