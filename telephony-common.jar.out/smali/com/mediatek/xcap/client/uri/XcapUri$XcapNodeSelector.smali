.class public Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
.super Ljava/lang/Object;
.source "XcapUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/xcap/client/uri/XcapUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XcapNodeSelector"
.end annotation


# instance fields
.field private final mNodeSelector:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    .line 371
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    .line 381
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    .line 392
    return-void
.end method


# virtual methods
.method public queryByAttrName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .locals 2
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    return-object p0
.end method

.method public queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-object p0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public queryByNodeName(Ljava/lang/String;I)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    return-object p0
.end method

.method public queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0, p2}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByAttrName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    .line 306
    return-object p0
.end method

.method public queryByNodeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    return-object p0
.end method

.method public queryByNodeNameWithPos(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
