.class Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dtmfQueueHandler"
.end annotation


# instance fields
.field private final DTMF_STATUS_START:Z

.field private final DTMF_STATUS_STOP:Z

.field public final MAXIMUM_DTMF_REQUEST:I

.field private mDtmfQueue:Ljava/util/Vector;

.field private mDtmfStatus:Z

.field private mIsSendChldRequest:Z

.field private mPendingCHLDRequest:Lcom/mediatek/internal/telephony/ims/RILRequest;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 373
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->MAXIMUM_DTMF_REQUEST:I

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->DTMF_STATUS_START:Z

    .line 432
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->DTMF_STATUS_STOP:Z

    .line 434
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    .line 435
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/internal/telephony/ims/RILRequest;

    .line 438
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    .line 374
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    .line 375
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/internal/telephony/ims/RILRequest;)V
    .locals 1
    .param p1, "o"    # Lcom/mediatek/internal/telephony/ims/RILRequest;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method public get()Lcom/mediatek/internal/telephony/ims/RILRequest;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/RILRequest;

    return-object v0
.end method

.method public getPendingRequest()Lcom/mediatek/internal/telephony/ims/RILRequest;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/internal/telephony/ims/RILRequest;

    return-object v0
.end method

.method public hasSendChldRequest()Z
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSendChldRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->access$100(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V

    .line 427
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    return v0
.end method

.method public isStart()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 386
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 399
    return-void
.end method

.method public remove(Lcom/mediatek/internal/telephony/ims/RILRequest;)V
    .locals 1
    .param p1, "o"    # Lcom/mediatek/internal/telephony/ims/RILRequest;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method public resetSendChldRequest()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    .line 423
    return-void
.end method

.method public setPendingRequest(Lcom/mediatek/internal/telephony/ims/RILRequest;)V
    .locals 0
    .param p1, "r"    # Lcom/mediatek/internal/telephony/ims/RILRequest;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/internal/telephony/ims/RILRequest;

    .line 411
    return-void
.end method

.method public setSendChldRequest()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mIsSendChldRequest:Z

    .line 419
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    .line 379
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$dtmfQueueHandler;->mDtmfStatus:Z

    .line 383
    return-void
.end method
