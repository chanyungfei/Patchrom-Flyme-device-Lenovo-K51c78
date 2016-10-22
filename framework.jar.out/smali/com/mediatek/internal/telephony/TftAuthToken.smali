.class public Lcom/mediatek/internal/telephony/TftAuthToken;
.super Ljava/lang/Object;
.source "TftAuthToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/TftAuthToken;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLOWID_LENGTH:I = 0x4


# instance fields
.field public authTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public flowIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/mediatek/internal/telephony/TftAuthToken$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/TftAuthToken$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/TftAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x4

    .line 15
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/TftAuthToken;->reset()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 18
    .local v3, "number":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 19
    iget-object v4, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 22
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 23
    new-array v0, v6, [Ljava/lang/Integer;

    .line 24
    .local v0, "flowIds":[Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v6, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 26
    :cond_1
    iget-object v4, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28
    .end local v0    # "flowIds":[Ljava/lang/Integer;
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v0, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 49
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, "[AuthTokenList["

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    .local v0, "authToken":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 52
    .end local v0    # "authToken":Ljava/lang/Integer;
    :cond_0
    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v5, ", FlowIdList["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget-object v5, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 55
    .local v2, "flowIds":[Ljava/lang/Integer;
    const-string v5, "["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 58
    :cond_1
    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 60
    .end local v2    # "flowIds":[Ljava/lang/Integer;
    .end local v4    # "j":I
    :cond_2
    const-string v5, "]]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 31
    iget-object v4, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v4, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->authTokenList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 33
    .local v0, "authToken":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 35
    .end local v0    # "authToken":Ljava/lang/Integer;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v4, p0, Lcom/mediatek/internal/telephony/TftAuthToken;->flowIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 37
    .local v1, "flowIds":[Ljava/lang/Integer;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 38
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 40
    .end local v1    # "flowIds":[Ljava/lang/Integer;
    .end local v3    # "j":I
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/TftAuthToken;->writeTo(Landroid/os/Parcel;)V

    .line 73
    return-void
.end method
