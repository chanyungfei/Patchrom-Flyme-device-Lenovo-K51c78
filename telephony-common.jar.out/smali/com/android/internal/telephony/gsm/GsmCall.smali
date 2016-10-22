.class Lcom/android/internal/telephony/gsm/GsmCall;
.super Lcom/android/internal/telephony/Call;
.source "GsmCall.java"


# instance fields
.field mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 44
    return-void
.end method


# virtual methods
.method attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 132
    return-void
.end method

.method attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 139
    return-void
.end method

.method clearDisconnected()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 233
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 238
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 239
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 241
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 149
    const/4 v0, 0x1

    .line 151
    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    .line 155
    const/4 v0, 0x0

    .line 160
    :cond_0
    if-eqz v0, :cond_2

    .line 161
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 162
    const/4 v3, 0x1

    .line 166
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :goto_1
    return v3

    .line 151
    .restart local v0    # "hasOnlyDisconnectedConnections":Z
    .restart local v1    # "i":I
    .restart local v2    # "s":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 176
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    .line 105
    return-void
.end method

.method public hangup(I)V
    .locals 1
    .param p1, "discRingingCallCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;I)V

    .line 116
    return-void
.end method

.method isFull()Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "DiscConn":I
    const/4 v2, 0x0

    .line 71
    .local v2, "isMptyCall":Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "j":I
    :goto_0
    if-ltz v3, :cond_1

    .line 72
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v1, v4

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 74
    .local v1, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 71
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 79
    .end local v1    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v6, :cond_2

    .line 80
    const/4 v2, 0x0

    .line 93
    :goto_1
    return v2

    .line 81
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_5

    .line 82
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    if-gt v4, v6, :cond_3

    .line 83
    const/4 v2, 0x0

    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    .line 85
    const/4 v2, 0x0

    goto :goto_1

    .line 87
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 90
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method onHangupLocal()V
    .locals 4

    .prologue
    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 213
    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 217
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 223
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "changed":Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 185
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 186
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 187
    const/4 v0, 0x1

    .line 190
    :cond_0
    return v0
.end method
