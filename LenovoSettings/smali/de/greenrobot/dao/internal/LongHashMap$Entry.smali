.class final Lde/greenrobot/dao/internal/LongHashMap$Entry;
.super Ljava/lang/Object;


# instance fields
.field final key:J

.field next:Lde/greenrobot/dao/internal/LongHashMap$Entry;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(JLjava/lang/Object;Lde/greenrobot/dao/internal/LongHashMap$Entry;)V
    .locals 1
    .param p1, "key"    # J

    .prologue
    .local p0, "this":Lde/greenrobot/dao/internal/LongHashMap$Entry;, "Lde/greenrobot/dao/internal/LongHashMap<TT;>.Entry<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    .local p4, "next":Lde/greenrobot/dao/internal/LongHashMap$Entry;, "Lde/greenrobot/dao/internal/LongHashMap$Entry<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lde/greenrobot/dao/internal/LongHashMap$Entry;->key:J

    iput-object p3, p0, Lde/greenrobot/dao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p4, p0, Lde/greenrobot/dao/internal/LongHashMap$Entry;->next:Lde/greenrobot/dao/internal/LongHashMap$Entry;

    return-void
.end method
