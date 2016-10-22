.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field private static ADN_FILE_SIZE:I = 0x0

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordCache"

.field public static MAX_PHB_NAME_LENGTH:I

.field public static MAX_PHB_NUMBER_ANR_COUNT:I

.field public static MAX_PHB_NUMBER_ANR_LENGTH:I

.field public static MAX_PHB_NUMBER_LENGTH:I


# instance fields
.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private final mLock:Ljava/lang/Object;

.field private mLocked:Z

.field mSuccess:Z

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x3c

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    .line 79
    const/16 v0, 0x28

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    .line 80
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    .line 81
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    .line 87
    const/16 v0, 0xfa

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->ADN_FILE_SIZE:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 3
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 91
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 98
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 99
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 101
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearUserWriters,mLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 130
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    if-eqz v2, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 137
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 140
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 141
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 119
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 120
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 121
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 122
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 123
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 126
    return-void
.end method

.method private dumpAdnLikeFile()V
    .locals 8

    .prologue
    .line 845
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 846
    .local v5, "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpAdnLikeFile size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 849
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 851
    .local v2, "key":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 852
    .local v4, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpAdnLikeFile index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "records size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 853
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 854
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 855
    .local v3, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAdnLikeFiles["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 848
    .end local v3    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    .end local v1    # "j":I
    .end local v2    # "key":I
    .end local v4    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 669
    :cond_0
    return-void

    .line 661
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 662
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 664
    .local v2, "waiter":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 665
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 666
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 661
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;
    .param p3, "ril_errno"    # I

    .prologue
    .line 179
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 181
    .local v0, "e":Lcom/android/internal/telephony/CommandException;
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 184
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addContactToGroup(II)Z

    move-result v0

    return v0
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    const/16 v0, 0x6f4a

    .line 158
    sparse-switch p1, :sswitch_data_0

    .line 165
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 159
    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 161
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 162
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 164
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrCount()I

    move-result v0

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailCount()I

    move-result v0

    return v0
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSneRecordLen()I
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSneRecordLen()I

    move-result v0

    return v0
.end method

.method public getUsimAasById(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasMaxCount()I
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimAasMaxNameLen()I
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v0

    return v0
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .locals 1
    .param p1, "nGasId"    # I

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGroups()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGrpMaxCount()I
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGrpMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimGrpMaxNameLen()I
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGrpMaxNameLen()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 677
    const/4 v5, 0x0

    .line 679
    .local v5, "flag":Z
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 769
    :cond_0
    :goto_0
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v12, v12, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v12, :cond_e

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/16 v13, 0x4f3a

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/16 v13, 0x4f3b

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/16 v13, 0x4f3c

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/16 v13, 0x4f3d

    if-ne v12, v13, :cond_e

    :cond_1
    if-eqz v5, :cond_e

    .line 770
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnListFromUsim()Ljava/util/ArrayList;

    move-result-object v2

    .line 772
    .local v2, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-eqz v2, :cond_e

    .line 773
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 774
    .local v9, "totalSize":I
    const/4 v10, 0x0

    .line 775
    .local v10, "usedRecord":I
    const/4 v6, 0x0

    .line 777
    .local v6, "i":I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_d

    .line 778
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 779
    add-int/lit8 v10, v10, 0x1

    .line 780
    const-string v12, "AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "print userRecord: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 682
    .end local v2    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v6    # "i":I
    .end local v9    # "totalSize":I
    .end local v10    # "usedRecord":I
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 683
    .local v3, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 686
    .local v4, "efid":I
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 687
    .local v11, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 689
    iget-object v12, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_3

    .line 690
    iget-object v13, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v13, v4, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    :goto_2
    invoke-direct {p0, v11, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 697
    const-string v12, "AdnRecordCache"

    const-string v13, "load all adns and set flag into ture"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v5, 0x1

    .line 699
    goto/16 :goto_0

    .line 692
    :cond_3
    const-string v12, "AdnRecordCache"

    const-string v13, "EVENT_LOAD_ALL_ADN_LIKE_DONE exception"

    iget-object v14, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v12, v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 701
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "efid":I
    .end local v11    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    const-string v12, "EVENT_UPDATE_ADN_DONE"

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 702
    iget-boolean v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    if-eqz v12, :cond_0

    .line 703
    iget-object v13, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 704
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 705
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 706
    .restart local v4    # "efid":I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 707
    .local v7, "index":I
    iget-object v12, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v12

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v1, v0

    .line 709
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v12, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_6

    .line 710
    if-eqz v1, :cond_4

    .line 711
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 712
    iget v12, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    if-gtz v12, :cond_4

    .line 713
    iput v4, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 717
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mAdnLikeFiles changed index:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ",adn:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 718
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v12, v12, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v12, :cond_9

    .line 719
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 720
    const/16 v12, 0x4f3b

    if-ne v4, v12, :cond_8

    .line 722
    add-int/lit16 v7, v7, 0xfa

    .line 723
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 724
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    add-int/lit16 v14, v7, -0xfa

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 725
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mAdnLikeFiles after add changed index:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ",adn:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " efid:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 730
    :cond_5
    :goto_3
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    if-eqz v12, :cond_6

    const/16 v12, 0x6f3b

    if-eq v4, v12, :cond_6

    .line 731
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v14, v7, -0x1

    invoke-virtual {v12, v14, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/uicc/AdnRecord;)V

    .line 747
    :cond_6
    :goto_4
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    .line 748
    .local v8, "response":Landroid/os/Message;
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 750
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AdnRecordCacheEx: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 752
    iget-object v12, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_7

    if-eqz v8, :cond_7

    .line 753
    const/4 v12, 0x0

    iget-object v14, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v12, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 754
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 756
    :cond_7
    iget-object v12, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_c

    const/4 v12, 0x1

    :goto_5
    iput-boolean v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 757
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 758
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 760
    const-string v12, "AdnRecordCache"

    const-string v14, "update  adn and set flag into ture"

    invoke-static {v12, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v5, 0x1

    .line 762
    monitor-exit v13

    goto/16 :goto_0

    .end local v1    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "efid":I
    .end local v7    # "index":I
    .end local v8    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 727
    .restart local v1    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "efid":I
    .restart local v7    # "index":I
    :cond_8
    :try_start_1
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    add-int/lit8 v14, v7, -0x1

    invoke-virtual {v12, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 734
    :cond_9
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 735
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    add-int/lit8 v14, v7, -0x1

    invoke-virtual {v12, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_a
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    if-eqz v12, :cond_6

    const/16 v12, 0x6f3b

    if-eq v4, v12, :cond_6

    .line 738
    const/16 v12, 0x4f3b

    if-ne v4, v12, :cond_b

    .line 740
    add-int/lit16 v7, v7, 0xfa

    .line 742
    :cond_b
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v14, v7, -0x1

    invoke-virtual {v12, v14, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/uicc/AdnRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 756
    .restart local v8    # "response":Landroid/os/Message;
    :cond_c
    const/4 v12, 0x0

    goto :goto_5

    .line 784
    .end local v1    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "efid":I
    .end local v7    # "index":I
    .end local v8    # "response":Landroid/os/Message;
    .restart local v2    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v6    # "i":I
    .restart local v9    # "totalSize":I
    .restart local v10    # "usedRecord":I
    :cond_d
    const-string v12, "AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setPhbRecordStorageInfo totalSize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " usedRecord = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    check-cast v12, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    invoke-virtual {v12, v9, v10}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->setPhbRecordStorageInfo(II)V

    .line 789
    .end local v2    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v6    # "i":I
    .end local v9    # "totalSize":I
    .end local v10    # "usedRecord":I
    :cond_e
    return-void

    .line 679
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasExistGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasSne()Z
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasSne()Z

    move-result v0

    return v0
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .locals 1
    .param p1, "aasName"    # Ljava/lang/String;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->insertUsimAas(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertUsimGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->insertUsimGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAdnAccessible()Z
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAdnAccessible()Z

    move-result v0

    return v0
.end method

.method public isUICCCard()Z
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v0, :cond_0

    .line 929
    const/4 v0, 0x1

    .line 931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimPhbEfAndNeedReset(I)Z
    .locals 1
    .param p1, "fileId"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isUsimPhbEfAndNeedReset(I)Z

    move-result v0

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 793
    const-string v0, "AdnRecordCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AdnRecordCache] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v0

    return v0
.end method

.method public removeContactFromGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeContactFromGroup(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimAasById(II)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimGroupById(I)Z
    .locals 1
    .param p1, "nGasId"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimGroupById(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 7
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestLoadAllAdnLike efid = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestLoadAllAdnLike extensionEf = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 589
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_1

    .line 590
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 591
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isPhbReady()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_1

    .line 593
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 594
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 650
    .end local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    const/16 v3, 0x4f30

    if-ne p1, v3, :cond_2

    .line 601
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    .line 605
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestLoadAllAdnLike result = null ?"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 608
    if-eqz v1, :cond_4

    .line 609
    if-eqz p3, :cond_0

    .line 610
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 611
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 603
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_1

    :cond_3
    move v3, v5

    .line 605
    goto :goto_2

    .line 619
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 621
    .local v2, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v2, :cond_5

    .line 625
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .restart local v2    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 636
    if-gez p2, :cond_6

    .line 639
    if-eqz p3, :cond_0

    .line 640
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF is not known ADN-like EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 642
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 648
    :cond_6
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {p0, v4, p1, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "reset"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 113
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    .line 116
    return-void
.end method

.method public updateAdnAas(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnAas(II)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 25
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 202
    .local v7, "extensionEF":I
    const/16 v19, 0x0

    .line 203
    .local v19, "i":I
    const/16 v16, 0x0

    .line 204
    .local v16, "anr":Ljava/lang/String;
    add-int/lit8 v4, p3, -0x1

    sget v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;->ADN_FILE_SIZE:I

    rem-int/2addr v4, v5

    add-int/lit8 v8, v4, 0x1

    .line 206
    .local v8, "adnIndex":I
    if-gez v7, :cond_1

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v4, v5, :cond_2

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the input length of mAlphaTag is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3ea

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    .end local v7    # "extensionEF":I
    .end local v8    # "adnIndex":I
    .end local v16    # "anr":Ljava/lang/String;
    .end local v19    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 220
    .restart local v7    # "extensionEF":I
    .restart local v8    # "adnIndex":I
    .restart local v16    # "anr":Ljava/lang/String;
    .restart local v19    # "i":I
    :cond_2
    const/16 v19, 0x0

    :goto_1
    :try_start_2
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_4

    .line 221
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v16

    .line 222
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    if-le v4, v5, :cond_3

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the input length of additional number is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_0

    .line 220
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 232
    :cond_4
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    .line 233
    .local v20, "num_length":I
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 234
    add-int/lit8 v20, v20, -0x1

    .line 237
    :cond_5
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    move/from16 v0, v20

    if-le v0, v4, :cond_6

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the input length of phoneNumber is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e9

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 251
    :cond_6
    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v21

    .line 254
    .local v21, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-nez v21, :cond_7

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adn list not exist for EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 262
    :cond_7
    add-int/lit8 v4, p3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 263
    .local v18, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move/from16 p1, v0

    .line 264
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 266
    move/from16 v0, p1

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 270
    .end local v18    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v21    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_8
    const/16 v19, 0x0

    :goto_2
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_a

    .line 271
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v16

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, v16

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_9

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop the additional number for the update fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 270
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 282
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/Message;

    .line 283
    .local v22, "pendingResponse":Landroid/os/Message;
    if-eqz v22, :cond_b

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have pending update for EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_c

    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-eq v0, v4, :cond_c

    const/16 v4, 0x4f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_c

    const/16 v4, 0x4f3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_c

    const/16 v4, 0x4f3c

    move/from16 v0, p1

    if-eq v0, v4, :cond_c

    const/16 v4, 0x4f3d

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    .line 290
    :cond_c
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_d

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeContactGroup(I)Z

    .line 295
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 297
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v4, v4, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v4, :cond_10

    .line 299
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v5, v1, v8, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v5, p2

    move/from16 v6, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 314
    :try_start_5
    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 315
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_0

    .line 319
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_e

    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-eq v0, v4, :cond_e

    const/16 v4, 0x4f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_e

    const/16 v4, 0x4f3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_e

    const/16 v4, 0x4f3c

    move/from16 v0, p1

    if-eq v0, v4, :cond_e

    const/16 v4, 0x4f3d

    move/from16 v0, p1

    if-ne v0, v4, :cond_14

    .line 321
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportSne()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;I)V

    .line 324
    :cond_f
    const/16 v19, 0x0

    :goto_4
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v19

    if-ge v0, v4, :cond_11

    .line 325
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v16

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, v16

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 324
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 303
    :cond_10
    :try_start_8
    new-instance v9, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v9, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v10, p2

    move/from16 v11, p1

    move v12, v7

    move/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 314
    :catchall_1
    move-exception v4

    monitor-exit v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 311
    :catch_0
    move-exception v17

    .line 312
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_a
    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 328
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :cond_11
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v23

    .line 329
    .local v23, "success":I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_12

    .line 330
    const-string v4, "drop the email for the limitation of the SIM card"

    const/16 v5, 0x3ed

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 344
    .end local v23    # "success":I
    :catch_1
    move-exception v17

    .line 345
    .local v17, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 334
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v23    # "success":I
    :cond_12
    const/4 v4, -0x2

    move/from16 v0, v23

    if-ne v4, v0, :cond_13

    .line 335
    :try_start_d
    const-string v4, "the email string is too long"

    const/16 v5, 0x3ee

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 339
    const-string v4, "AdnRecordCache"

    const-string v5, "haman, by index email too long"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 341
    :cond_13
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 342
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 350
    .end local v23    # "success":I
    :cond_14
    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 351
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_e
    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 352
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I
    .locals 27
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pin2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldAdn ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], new Adn["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 375
    const/4 v12, -0x1

    .line 377
    .local v12, "index":I
    const/16 v19, 0x0

    .line 378
    .local v19, "i":I
    const/4 v15, 0x0

    .line 379
    .local v15, "anr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    .line 380
    .local v6, "extensionEF":I
    const/4 v7, 0x0

    .line 382
    .local v7, "adnIndex":I
    if-gez v6, :cond_0

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v20, v12

    .line 572
    .end local v12    # "index":I
    .local v20, "index":I
    :goto_0
    monitor-exit p0

    return v20

    .line 387
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_0
    :try_start_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v3, v4, :cond_1

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the input length of mAlphaTag is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3ea

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move/from16 v20, v12

    .line 393
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto :goto_0

    .line 396
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    .line 397
    .local v22, "num_length":I
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 398
    add-int/lit8 v22, v22, -0x1

    .line 401
    :cond_2
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    move/from16 v0, v22

    if-le v0, v3, :cond_3

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the input length of phoneNumber is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e9

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move/from16 v20, v12

    .line 408
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto :goto_0

    .line 411
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_3
    const/16 v19, 0x0

    :goto_1
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_6

    .line 412
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v15

    .line 413
    if-eqz v15, :cond_5

    .line 414
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    .line 415
    const/16 v3, 0x2b

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 416
    add-int/lit8 v22, v22, -0x1

    .line 419
    :cond_4
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    move/from16 v0, v22

    if-le v0, v3, :cond_5

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the input length of additional number is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move/from16 v20, v12

    .line 425
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 411
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 431
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 432
    const-string v3, "the email string is too long"

    const/16 v4, 0x3ee

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move/from16 v20, v12

    .line 436
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 441
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_7
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v23

    .line 447
    .local v23, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    if-nez v23, :cond_9

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn list not exist for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move/from16 v20, v12

    .line 452
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 444
    .end local v20    # "index":I
    .end local v23    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v12    # "index":I
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v23

    .restart local v23    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_2

    .line 455
    :cond_9
    const/16 v16, 0x1

    .line 456
    .local v16, "count":I
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 457
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 458
    move/from16 v12, v16

    .line 463
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 464
    const/4 v3, -0x1

    if-ne v12, v3, :cond_d

    .line 465
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3eb

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    :goto_4
    move/from16 v20, v12

    .line 473
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 461
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 471
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 373
    .end local v6    # "extensionEF":I
    .end local v7    # "adnIndex":I
    .end local v12    # "index":I
    .end local v15    # "anr":Ljava/lang/String;
    .end local v16    # "count":I
    .end local v19    # "i":I
    .end local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v22    # "num_length":I
    .end local v23    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 476
    .restart local v6    # "extensionEF":I
    .restart local v7    # "adnIndex":I
    .restart local v12    # "index":I
    .restart local v15    # "anr":Ljava/lang/String;
    .restart local v16    # "count":I
    .restart local v19    # "i":I
    .restart local v21    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v22    # "num_length":I
    .restart local v23    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_d
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 478
    add-int/lit8 v3, v12, -0x1

    :try_start_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 479
    .local v18, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move/from16 p1, v0

    .line 480
    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 481
    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 483
    move/from16 v0, p1

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 484
    move-object/from16 v0, p3

    iput v6, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 485
    move-object/from16 v0, p3

    iput v12, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 488
    .end local v18    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Message;

    .line 490
    .local v24, "pendingResponse":Landroid/os/Message;
    if-eqz v24, :cond_f

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have pending update for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move/from16 v20, v12

    .line 492
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 494
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_f
    if-nez p1, :cond_10

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abnormal efid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move/from16 v20, v12

    .line 496
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 498
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v3, v12, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 499
    const-string v3, "drop the email for the limitation of the SIM card"

    const/16 v4, 0x3ed

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move/from16 v20, v12

    .line 503
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 505
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_11
    const/16 v19, 0x0

    :goto_5
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_13

    .line 506
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v15

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v19

    invoke-virtual {v3, v15, v12, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_12

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop the additional number for the write fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3f4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    move/from16 v20, v12

    .line 512
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 505
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 516
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 520
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 521
    add-int/lit8 v3, v12, -0x1

    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->ADN_FILE_SIZE:I

    rem-int/2addr v3, v4

    add-int/lit8 v7, v3, 0x1

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v3, :cond_14

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch CsimFileHandler index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 525
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v7, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 536
    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 540
    :try_start_5
    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 541
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    if-nez v3, :cond_15

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch mSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v20, v12

    .line 543
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 529
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_14
    :try_start_7
    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v1, v12, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v9, p3

    move/from16 v10, p1

    move v11, v6

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_6

    .line 540
    :catchall_1
    move-exception v3

    monitor-exit v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 537
    :catch_0
    move-exception v17

    .line 538
    .local v17, "e":Ljava/lang/InterruptedException;
    :try_start_9
    monitor-exit v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v20, v12

    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 545
    .end local v17    # "e":Ljava/lang/InterruptedException;
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_15
    const/16 v25, 0x0

    .line 546
    .local v25, "success":I
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x4f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x4f3b

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x4f3c

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x4f3d

    move/from16 v0, p1

    if-ne v0, v3, :cond_19

    .line 547
    :cond_16
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportSne()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v3, v4, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;I)V

    .line 550
    :cond_17
    const/16 v19, 0x0

    :goto_7
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_18

    .line 551
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v15

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v19

    invoke-virtual {v3, v15, v12, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V

    .line 550
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 554
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v3, v4, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v25

    .line 557
    :cond_19
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_1a

    .line 558
    const-string v3, "drop the email for the limitation of the SIM card"

    const/16 v4, 0x3ed

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    :goto_8
    move/from16 v20, v12

    .line 572
    .end local v12    # "index":I
    .restart local v20    # "index":I
    goto/16 :goto_0

    .line 561
    .end local v20    # "index":I
    .restart local v12    # "index":I
    :cond_1a
    const/4 v3, -0x2

    move/from16 v0, v25

    if-ne v3, v0, :cond_1b

    .line 562
    const-string v3, "the email string is too long"

    const/16 v4, 0x3ee

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 566
    const-string v3, "AdnRecordCache"

    const-string v4, "haman, by search email too long"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 568
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 569
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 570
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8
.end method

.method public updateContactToGroups(I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateContactToGroups(I[I)Z

    move-result v0

    return v0
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimAas(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateUsimGroup(ILjava/lang/String;)I
    .locals 1
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimGroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
