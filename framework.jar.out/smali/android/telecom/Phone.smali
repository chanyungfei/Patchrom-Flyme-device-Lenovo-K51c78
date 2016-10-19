.class public final Landroid/telecom/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Phone$Listener;
    }
.end annotation


# instance fields
.field private mAudioState:Landroid/telecom/AudioState;

.field private final mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mCanAddCall:Z

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Phone$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/telecom/InCallAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/telecom/InCallAdapter;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    .line 109
    iget-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    .line 121
    iput-object p1, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 122
    return-void
.end method

.method private checkCallTree(Landroid/telecom/ParcelableCall;)V
    .locals 7
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const-string v1, "ParcelableCall %s has nonexistent parent %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 338
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    const-string v1, "ParcelableCall %s has nonexistent child %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private fireAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 3
    .param p1, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 313
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 314
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V

    goto :goto_0

    .line 316
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireBringToForeground(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 319
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 320
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onBringToForeground(Landroid/telecom/Phone;Z)V

    goto :goto_0

    .line 322
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCallAdded(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 301
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 302
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    goto :goto_0

    .line 304
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCallRemoved(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 307
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 308
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    goto :goto_0

    .line 310
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method private fireCanAddCallChanged(Z)V
    .locals 3
    .param p1, "canAddCall"    # Z

    .prologue
    .line 325
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 326
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCanAddCallChanged(Landroid/telecom/Phone;Z)V

    goto :goto_0

    .line 328
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Landroid/telecom/Phone$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public final canAddCall()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    return v0
.end method

.method final destroy()V
    .locals 4

    .prologue
    .line 203
    iget-object v2, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 204
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/telecom/Call;->internalSetDisconnected()V

    goto :goto_0

    .line 208
    .end local v0    # "call":Landroid/telecom/Call;
    :cond_1
    return-void
.end method

.method public explicitCallTransfer(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->explicitCallTransfer(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/telecom/Phone;->mAudioState:Landroid/telecom/AudioState;

    return-object v0
.end method

.method public final getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    return-object v0
.end method

.method public final hangupActiveAndAnswerWaiting()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->hangupActiveAndAnswerWaiting()V

    .line 414
    return-void
.end method

.method public final hangupAll()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->hangupAll()V

    .line 398
    return-void
.end method

.method public final hangupAllHoldCalls()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->hangupAllHoldCalls()V

    .line 406
    return-void
.end method

.method final internalAddCall(Landroid/telecom/ParcelableCall;)V
    .locals 3
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 126
    new-instance v0, Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-direct {v0, p0, v1, v2}, Landroid/telecom/Call;-><init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;)V

    .line 127
    .local v0, "call":Landroid/telecom/Call;
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 130
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 131
    invoke-direct {p0, v0}, Landroid/telecom/Phone;->fireCallAdded(Landroid/telecom/Call;)V

    .line 132
    return-void
.end method

.method final internalAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/telecom/Phone;->mAudioState:Landroid/telecom/AudioState;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iput-object p1, p0, Landroid/telecom/Phone;->mAudioState:Landroid/telecom/AudioState;

    .line 162
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 164
    :cond_0
    return-void
.end method

.method final internalBringToForeground(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireBringToForeground(Z)V

    .line 174
    return-void
.end method

.method final internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 1
    .param p1, "telecomId"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    return-object v0
.end method

.method final internalOnStorageFull()V
    .locals 3

    .prologue
    .line 193
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 194
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1}, Landroid/telecom/Phone$Listener;->onStorageFull()V

    goto :goto_0

    .line 196
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method final internalRemoveCall(Landroid/telecom/Call;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/Call;->internalGetCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallRemoved(Landroid/telecom/Call;)V

    .line 139
    return-void
.end method

.method final internalSetCanAddCall(Z)V
    .locals 1
    .param p1, "canAddCall"    # Z

    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    if-eq v0, p1, :cond_0

    .line 179
    iput-boolean p1, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    .line 180
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCanAddCallChanged(Z)V

    .line 182
    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecomId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 153
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalSetPostDialWait(Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method final internalUpdateCall(Landroid/telecom/ParcelableCall;)V
    .locals 3
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 143
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 144
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 146
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 148
    :cond_0
    return-void
.end method

.method final internalUpdateRecordState(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 186
    iget-object v2, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 187
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p1, p2}, Landroid/telecom/Phone$Listener;->onUpdateRecordState(II)V

    goto :goto_0

    .line 189
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_0
    return-void
.end method

.method public final onUiShowing(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 425
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->onUiShowing(Z)V

    .line 426
    return-void
.end method

.method public final removeListener(Landroid/telecom/Phone$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    return-void
.end method

.method public final setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 265
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->setAudioRoute(I)V

    .line 266
    return-void
.end method

.method public final setMuted(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->mute(Z)V

    .line 256
    return-void
.end method

.method public final setProximitySensorOff(Z)V
    .locals 1
    .param p1, "screenOnImmediately"    # Z

    .prologue
    .line 288
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->turnProximitySensorOff(Z)V

    .line 289
    return-void
.end method

.method public final setProximitySensorOn()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->turnProximitySensorOn()V

    .line 276
    return-void
.end method

.method public setSortedBackgroudCallList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->setSortedBackgroudCallList(Ljava/util/List;)V

    .line 371
    return-void
.end method

.method public setSortedIncomingCallList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->setSortedIncomingCallList(Ljava/util/List;)V

    .line 382
    return-void
.end method

.method public final startVoiceRecording()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->startVoiceRecording()V

    .line 352
    return-void
.end method

.method public final stopVoiceRecording()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->stopVoiceRecording()V

    .line 361
    return-void
.end method

.method public final updatePowerForSmartBook(Z)V
    .locals 1
    .param p1, "onOff"    # Z

    .prologue
    .line 421
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->updatePowerForSmartBook(Z)V

    .line 422
    return-void
.end method
