.class Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Lcom/mediatek/anrmanager/ANRManager$IAnrBroadcastQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnrBroadcastQueue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderedBroadcastsPid()I
    .locals 4

    .prologue
    .line 162
    const/4 v1, -0x1

    .line 163
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 165
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 169
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    return v1
.end method
