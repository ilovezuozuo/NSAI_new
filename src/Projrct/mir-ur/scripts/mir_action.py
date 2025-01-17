import os
import numpy as np
import copy

#define prim,include their pre-condition and eff
class PrimAction:
    def __init__(self, prim):
        self.pre={}
        self.eff={}
        self.prim=prim
        if self.prim=='move':
            self.pre={'have_coarse_pose':True, 'above_bolt':False}
            self.eff={'above_bolt':True}
        elif self.prim=='mate':
            self.pre={'target_aim':False,'above_bolt':True}
            self.eff={'target_aim':True,'target_clear':True}
        elif self.prim=='push':
            self.pre={'target_clear':False,'above_bolt':True}
            self.eff={'target_clear':True,'target_aim':True}
        elif self.prim=='recognition':
            self.pre={'above_bolt':True,'target_aim':True,'target_clear':True,'above_center_c':False}
            self.eff={'above_center_c':True}
        elif self.prim=='change':
            self.pre={'above_center_c':True,'target_match':False}
            self.eff={'target_match':True}
        elif self.prim=='insert':
            self.pre={'target_aim':True,'target_clear':True,'above_center_c':True,'target_match':True,'cramped':False}
            self.eff={'cramped':True}
        elif self.prim=='disassemble':
            self.pre={'cramped':True,'disassembled':False}
            self.eff={'disassembled':True}
        # if self.prim=='move':
        #     self.pre={'have_coarse_pose':True, 'above_bolt':False}
        #     self.eff={'above_bolt':True}
        # elif self.prim=='mate':
        #     self.pre={'target_aim':False,'above_bolt':True}
        #     self.eff={'target_aim':True,'target_clear':True}
        # elif self.prim=='push':
        #     self.pre={'target_clear':False,'above_bolt':True}
        #     self.eff={'target_clear':True,'target_aim':True}
        # elif self.prim=='recognition':
        #     self.pre={'target_aim':True,'target_clear':True,'above_center_c':False}
        #     self.eff={'above_center_c':True}
        # elif self.prim=='change':
        #     self.pre={'above_center_c':True,'target_match':False}
        #     self.eff={'target_match':True}
        # elif self.prim=='insert':
        #     self.pre={'target_match':True,'cramped':False}
        #     self.eff={'cramped':True}
        # elif self.prim=='disassemble':
        #     self.pre={'cramped':True,'disassembled':False}
        #     self.eff={'disassembled':True}
        # if self.prim=='move':
        #     self.pre={'have_coarse_pose':True, 'above_bolt':False}
        #     self.eff={'above_bolt':True}
        # elif self.prim=='mate':
        #     self.pre={'target_aim':False,'above_bolt':True}
        #     self.eff={'target_aim':True,'target_clear':True}
        # elif self.prim=='push':
        #     self.pre={'target_clear':False,'above_bolt':True}
        #     self.eff={'target_clear':True,'target_aim':True}
        # elif self.prim=='insert':
        #     self.pre={'target_aim':True,'target_clear':True,'cramped':False}
        #     self.eff={'cramped':True}
        # elif self.prim=='disassemble':
        #     self.pre={'cramped':True,'disassembled':False}
        #     self.eff={'disassembled':True}
    

    #change stage after we finish one primitive
    def action(self,stage):
        new_stage=copy.deepcopy(stage)
        for e in self.eff:
            new_stage[e]=self.eff[e]
        return new_stage
    

    #verify pre of a prim
    def able(self,stage):
        for p in self.pre:
            if not stage[p]==self.pre[p]:
                return False
        return True