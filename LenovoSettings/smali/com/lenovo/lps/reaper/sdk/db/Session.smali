.class public Lcom/lenovo/lps/reaper/sdk/db/Session;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private Id:J

.field private currentView:J

.field private firstView:J

.field private previousView:J

.field private sessionId:I

.field private visits:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJJJI)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "firstView"    # J
    .param p4, "previousView"    # J
    .param p6, "currentView"    # J
    .param p8, "visits"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->Id:J

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->sessionId:I

    iput-wide p2, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->firstView:J

    iput-wide p4, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->previousView:J

    iput-wide p6, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->currentView:J

    iput p8, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->visits:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "Id"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->Id:J

    return-void
.end method

.method public constructor <init>(JIJJJI)V
    .locals 0
    .param p1, "Id"    # J
    .param p3, "sessionId"    # I
    .param p4, "firstView"    # J
    .param p6, "previousView"    # J
    .param p8, "currentView"    # J
    .param p10, "visits"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->Id:J

    iput p3, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->sessionId:I

    iput-wide p4, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->firstView:J

    iput-wide p6, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->previousView:J

    iput-wide p8, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->currentView:J

    iput p10, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->visits:I

    return-void
.end method


# virtual methods
.method public getCurrentView()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->currentView:J

    return-wide v0
.end method

.method public getFirstView()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->firstView:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->Id:J

    return-wide v0
.end method

.method public getPreviousView()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->previousView:J

    return-wide v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->sessionId:I

    return v0
.end method

.method public getVisits()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->visits:I

    return v0
.end method

.method public setCurrentView(J)V
    .locals 1
    .param p1, "currentView"    # J

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->currentView:J

    return-void
.end method

.method public setFirstView(J)V
    .locals 1
    .param p1, "firstView"    # J

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->firstView:J

    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "Id"    # J

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->Id:J

    return-void
.end method

.method public setPreviousView(J)V
    .locals 1
    .param p1, "previousView"    # J

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->previousView:J

    return-void
.end method

.method public setSessionId(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->sessionId:I

    return-void
.end method

.method public setVisits(I)V
    .locals 0
    .param p1, "visits"    # I

    .prologue
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Session;->visits:I

    return-void
.end method
