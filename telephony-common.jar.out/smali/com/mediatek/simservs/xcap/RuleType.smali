.class public interface abstract Lcom/mediatek/simservs/xcap/RuleType;
.super Ljava/lang/Object;
.source "RuleType.java"


# virtual methods
.method public abstract createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
.end method

.method public abstract getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
.end method

.method public abstract saveRule(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation
.end method

.method public abstract saveRuleSet()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation
.end method
