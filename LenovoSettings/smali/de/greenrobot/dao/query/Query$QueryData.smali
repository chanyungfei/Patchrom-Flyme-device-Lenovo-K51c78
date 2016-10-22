.class final Lde/greenrobot/dao/query/Query$QueryData;
.super Lde/greenrobot/dao/query/AbstractQueryData;


# instance fields
.field private final limitPosition:I

.field private final offsetPosition:I


# direct methods
.method constructor <init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;
    .param p4, "limitPosition"    # I
    .param p5, "offsetPosition"    # I

    .prologue
    .local p0, "this":Lde/greenrobot/dao/query/Query$QueryData;, "Lde/greenrobot/dao/query/Query<TT;>.QueryData<TT2;>;"
    .local p1, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<TT2;*>;"
    invoke-direct {p0, p1, p2, p3}, Lde/greenrobot/dao/query/AbstractQueryData;-><init>(Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    iput p4, p0, Lde/greenrobot/dao/query/Query$QueryData;->limitPosition:I

    iput p5, p0, Lde/greenrobot/dao/query/Query$QueryData;->offsetPosition:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic createQuery()Lde/greenrobot/dao/query/AbstractQuery;
    .locals 1

    invoke-virtual {p0}, Lde/greenrobot/dao/query/Query$QueryData;->createQuery()Lde/greenrobot/dao/query/Query;

    move-result-object v0

    return-object v0
.end method

.method protected createQuery()Lde/greenrobot/dao/query/Query;
    .locals 8

    new-instance v0, Lde/greenrobot/dao/query/Query;

    iget-object v2, p0, Lde/greenrobot/dao/query/Query$QueryData;->dao:Lde/greenrobot/dao/AbstractDao;

    iget-object v3, p0, Lde/greenrobot/dao/query/Query$QueryData;->sql:Ljava/lang/String;

    iget-object v1, p0, Lde/greenrobot/dao/query/Query$QueryData;->initialValues:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget v5, p0, Lde/greenrobot/dao/query/Query$QueryData;->limitPosition:I

    iget v6, p0, Lde/greenrobot/dao/query/Query$QueryData;->offsetPosition:I

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lde/greenrobot/dao/query/Query;-><init>(Lde/greenrobot/dao/query/Query$QueryData;Lde/greenrobot/dao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILde/greenrobot/dao/query/Query;)V

    return-object v0
.end method
