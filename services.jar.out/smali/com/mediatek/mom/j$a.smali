.class Lcom/mediatek/mom/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/content/pm/Signature;

.field private C:Z

.field private D:Z

.field private E:I

.field private mPackageName:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private r:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v1, p0, Lcom/mediatek/mom/j$a;->r:I

    .line 79
    iput-object v2, p0, Lcom/mediatek/mom/j$a;->mTag:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/mediatek/mom/j$a;->mPackageName:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/mediatek/mom/j$a;->y:Ljava/lang/String;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/mom/j$a;->z:I

    .line 83
    iput-boolean v1, p0, Lcom/mediatek/mom/j$a;->A:Z

    .line 84
    iput-object v2, p0, Lcom/mediatek/mom/j$a;->B:Landroid/content/pm/Signature;

    .line 85
    iput-boolean v1, p0, Lcom/mediatek/mom/j$a;->C:Z

    .line 86
    iput-boolean v1, p0, Lcom/mediatek/mom/j$a;->D:Z

    .line 87
    iput v1, p0, Lcom/mediatek/mom/j$a;->E:I

    .line 91
    iput p1, p0, Lcom/mediatek/mom/j$a;->r:I

    .line 92
    iput-object p2, p0, Lcom/mediatek/mom/j$a;->mTag:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/mediatek/mom/j$a;->mPackageName:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/mediatek/mom/j$a;->y:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/mediatek/mom/j$a;->B:Landroid/content/pm/Signature;

    .line 96
    iput-boolean p6, p0, Lcom/mediatek/mom/j$a;->C:Z

    iput-boolean p6, p0, Lcom/mediatek/mom/j$a;->D:Z

    .line 97
    return-void
.end method

.method private declared-synchronized o()V
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mediatek/mom/j$a;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/mom/j$a;->E:I

    .line 138
    iget v0, p0, Lcom/mediatek/mom/j$a;->E:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/mediatek/mom/j$a;->n()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/mom/j$a;->A:Z

    .line 100
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/mediatek/mom/j$a;->r:I

    return v0
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/mediatek/mom/j$a;->z:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/mom/j$a;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/mom/j$a;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/mom/j$a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/mediatek/mom/j$a;->A:Z

    return v0
.end method

.method public k()Landroid/content/pm/Signature;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/mom/j$a;->B:Landroid/content/pm/Signature;

    return-object v0
.end method

.method public declared-synchronized l()V
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/mom/j$a;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Z
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/mom/j$a;->o()V

    .line 130
    iget-boolean v0, p0, Lcom/mediatek/mom/j$a;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()Z
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/mediatek/mom/j$a;->E:I

    .line 134
    iget-boolean v0, p0, Lcom/mediatek/mom/j$a;->D:Z

    iput-boolean v0, p0, Lcom/mediatek/mom/j$a;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppId(I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/mediatek/mom/j$a;->z:I

    .line 118
    return-void
.end method
