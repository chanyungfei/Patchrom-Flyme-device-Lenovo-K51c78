.class public abstract Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;
.super Ljava/lang/Object;

# interfaces
.implements Lde/greenrobot/dao/query/WhereCondition;


# instance fields
.field protected final hasSingleValue:Z

.field protected final value:Ljava/lang/Object;

.field protected final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->hasSingleValue:Z

    iput-object v1, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->value:Ljava/lang/Object;

    iput-object v1, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->values:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->value:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->hasSingleValue:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->values:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->hasSingleValue:Z

    iput-object p1, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public appendValuesTo(Ljava/util/List;)V
    .locals 4

    .prologue
    .local p1, "valuesTarget":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->hasSingleValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->values:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;->values:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
