.class public Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrappmanager/MessageLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CircularMessageInfoArray"
.end annotation


# instance fields
.field private s:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

.field private t:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

.field private u:I

.field private v:I

.field private w:I

.field final synthetic x:Lcom/mediatek/anrappmanager/MessageLogger;


# direct methods
.method public constructor <init>(Lcom/mediatek/anrappmanager/MessageLogger;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 273
    iput-object p1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->x:Lcom/mediatek/anrappmanager/MessageLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    add-int/lit8 v2, p2, 0x1

    .line 275
    new-array v0, v2, [Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->s:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    move v0, v1

    .line 276
    :goto_0
    if-ge v0, v2, :cond_0

    .line 277
    iget-object v3, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->s:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    new-instance v4, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    invoke-direct {v4, p1}, Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;-><init>(Lcom/mediatek/anrappmanager/MessageLogger;)V

    aput-object v4, v3, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    iput v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    .line 280
    iput v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->t:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    .line 282
    iput v2, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->w:I

    .line 283
    return-void
.end method

.method private a(I)Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    .locals 3

    .prologue
    .line 302
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->w:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->s:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    .line 305
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->s:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->w:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add()Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    .locals 2

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->full()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    .line 324
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->w:I

    if-ne v0, v1, :cond_0

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->s:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->t:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    .line 331
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    .line 332
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->w:I

    if-ne v0, v1, :cond_1

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->t:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public empty()Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->s:[Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public full()Z
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->w:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized get(I)Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 311
    invoke-direct {p0, p1}, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->a(I)Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 313
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLast()Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->t:Lcom/mediatek/anrappmanager/MessageLogger$MessageInfo;

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 294
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 295
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    sub-int/2addr v0, v1

    .line 297
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->w:I

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->v:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger$CircularMessageInfoArray;->u:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
