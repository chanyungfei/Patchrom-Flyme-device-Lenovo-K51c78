.class public interface abstract Lcom/mediatek/sensorhub/ISensorHubManager;
.super Ljava/lang/Object;
.source "ISensorHubManager.java"


# static fields
.field public static final SENSORHUB_SERVICE:Ljava/lang/String; = "sensorhubservice"


# virtual methods
.method public abstract cancelAction(I)Z
.end method

.method public abstract enableGestureWakeup(Z)Z
.end method

.method public abstract getContextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isContextSupported(I)Z
.end method

.method public abstract requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
.end method

.method public abstract updateCondition(ILcom/mediatek/sensorhub/Condition;)Z
.end method
