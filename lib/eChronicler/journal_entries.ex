defmodule EChronicler.JournalEntries do
  import Ecto.Query, warn: false

  alias EChronicler.Repo
  alias EChronicler.EChronicler.JournalEntry

  def list_journal_entries() do
    Repo.all(JournalEntry)
  end

  def create_journal_entry(attrs \\ %{}) do
    %JournalEntry{}
    |> JournalEntry.changeset(attrs)
    |> Repo.insert()
  end

end