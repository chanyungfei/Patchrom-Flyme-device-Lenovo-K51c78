.class Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLinearFixedContext"
.end annotation


# instance fields
.field mChannel:I

.field mCountRecords:I

.field mEfid:I

.field mLoadAll:Z

.field mMode:I

.field mOnLoaded:Landroid/os/Message;

.field mRecordNum:I

.field mRecordSize:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 128
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 129
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    .line 131
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mChannel:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 133
    return-void
.end method

.method constructor <init>(IILandroid/os/Message;I)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;
    .param p4, "channel"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 147
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    .line 150
    iput p4, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mChannel:I

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 152
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 137
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 138
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    .line 139
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mChannel:I

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 142
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;I)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "channel"    # I

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 156
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 157
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 158
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    .line 159
    iput p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mChannel:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 161
    return-void
.end method
