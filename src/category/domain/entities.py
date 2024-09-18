from dataclasses import dataclass, field
from datetime import datetime
from typing import Optional
# 3.10 - DataClass (> add na versão 3.7)
import uuid

@dataclass(kw_only=True) # init, repr, eq
class Category:

  id: uuid.UUID = field(
    default_factory=lambda: uuid.uuid4()
  )
  name: str
  description: Optional[str] = None
  is_active: Optional[bool] = True
  created_at: Optional[datetime] = field(
    default_factory=lambda: datetime.now()
  )








