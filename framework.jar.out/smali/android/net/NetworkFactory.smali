.class public Landroid/net/NetworkFactory;
.super Landroid/os/Handler;
.source "NetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkFactory$NetworkRequestInfo;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x83000

.field public static final CMD_CANCEL_REQUEST:I = 0x83001

.field public static final CMD_REQUEST_NETWORK:I = 0x83000

.field private static final CMD_SET_FILTER:I = 0x83003

.field private static final CMD_SET_SCORE:I = 0x83002

.field private static final DBG:Z = true

.field private static final VDBG:Z = true


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCapabilityFilter:Landroid/net/NetworkCapabilities;

.field private final mContext:Landroid/content/Context;

.field private mMessenger:Landroid/os/Messenger;

.field private final mNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkFactory$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCount:I

.field private mScore:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "filter"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    .line 115
    iput-object p3, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    .line 117
    iput-object p4, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 118
    return-void
.end method

.method private evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkFactory$NetworkRequestInfo;

    .prologue
    const/4 v2, 0x1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evalRequest request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with requested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") my score:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 241
    iget-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "  needNetworkFor"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 245
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    .line 246
    iput-boolean v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    .line 256
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-ne v0, v2, :cond_2

    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    if-gt v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    :cond_1
    const-string v0, "  releaseNetworkFor"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 251
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    goto :goto_0

    .line 254
    :cond_2
    const-string v0, "  done"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private evalRequests()V
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 260
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 262
    .local v1, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    invoke-direct {p0, v1}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    :cond_0
    return-void
.end method

.method private handleAddRequest(Landroid/net/NetworkRequest;I)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 171
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 172
    .local v0, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    if-nez v0, :cond_0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .end local v0    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    invoke-direct {v0, p0, p1, p2}, Landroid/net/NetworkFactory$NetworkRequestInfo;-><init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V

    .line 175
    .restart local v0    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget-object v2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  my score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V

    .line 183
    return-void

    .line 177
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for exisiting request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 178
    iput p2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    goto :goto_0
.end method

.method private handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 186
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget v3, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 187
    .local v1, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRemoveRequest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "req:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkFactory$NetworkRequestInfo;

    iget-boolean v2, v2, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkFactory$NetworkRequestInfo;

    iget-object v2, v2, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    if-eqz v1, :cond_1

    .line 195
    const-string v2, "find n"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget v3, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 197
    iget-boolean v2, v1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, v1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 201
    :cond_1
    return-void
.end method

.method private handleSetFilter(Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 209
    iput-object p1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 210
    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    .line 211
    return-void
.end method

.method private handleSetScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 204
    iput p1, p0, Landroid/net/NetworkFactory;->mScore:I

    .line 205
    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    .line 206
    return-void
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;I)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public addNetworkRequest(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 281
    const v0, 0x83000

    new-instance v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/NetworkFactory$NetworkRequestInfo;-><init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 283
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkFactory;->handleAddRequest(Landroid/net/NetworkRequest;I)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 148
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetScore(I)V

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetFilter(Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x83000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 272
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->startNetwork()V

    .line 273
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 121
    const-string v0, "Registering NetworkFactory"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    .line 124
    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    iget-object v2, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 276
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->stopNetwork()V

    .line 277
    :cond_0
    return-void
.end method

.method public removeNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 286
    const v0, 0x83001

    invoke-virtual {p0, v0, p1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 287
    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 294
    const v0, 0x83003

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method

.method public setScoreFilter(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 290
    const v0, 0x83002

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/NetworkFactory;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void
.end method

.method protected startNetwork()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method protected stopNetwork()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ScoreFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requests="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "Unregistering NetworkFactory"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    .line 134
    :cond_0
    return-void
.end method
