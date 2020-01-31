class TeamValidator < ActiveModel::Validator
  def validate(record)
    teams = record.teams.to_s.split(' || ')
    if record.teams.to_s.starts_with?('|| ') || record.teams.to_s.ends_with?(' ||')
      record.errors[:teams] << 'invalid team, try: team 1 || team b'
    elsif teams.count != 2
      record.errors[:teams] << 'should have 2 teams'
    end
  end
end
