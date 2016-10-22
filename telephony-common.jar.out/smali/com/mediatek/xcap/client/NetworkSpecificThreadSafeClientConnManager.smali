.class public Lcom/mediatek/xcap/client/NetworkSpecificThreadSafeClientConnManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "NetworkSpecificThreadSafeClientConnManager.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/mediatek/xcap/client/NameResolver;Z)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;
    .param p3, "resolver"    # Lcom/mediatek/xcap/client/NameResolver;
    .param p4, "shouldUseIpv6"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 23
    iget-object v0, p0, Lcom/mediatek/xcap/client/NetworkSpecificThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    check-cast v0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;

    invoke-virtual {v0, p3}, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->setNameResolver(Lcom/mediatek/xcap/client/NameResolver;)V

    .line 24
    iget-object v0, p0, Lcom/mediatek/xcap/client/NetworkSpecificThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    check-cast v0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;

    invoke-virtual {v0, p4}, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;->setShouldUseIpv6(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 29
    new-instance v0, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;

    invoke-direct {v0, p1}, Lcom/mediatek/xcap/client/NetworkSpecificClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method
